package com.tencoding.wherego.service.reservationService;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tencoding.wherego.dto.reservation.ReservationDto;
import com.tencoding.wherego.repository.interfaces.reservation.ReservationRepository;

@Service
public class ReservationService {

	@Autowired
	ReservationRepository reservationRepository;

	@Transactional
	public List<Integer> findAllReservationDates(ReservationDto dto) {
		Map<Integer, List<ReservationDto>> map = new HashMap<>();
		// room의 갯수
		int roomCount = reservationRepository.findRoomCount();
		// room 의 갯수만큼 for문을 돌려서 예약dto를 불러온다.
		// dto 로 불러 온 이유는
		// Map 의 key 는 room_id이다. val 은 ReservationDto 의 배열이다.
		for (int i = 0; i < roomCount; i++) {
			List<ReservationDto> result = reservationRepository.findAllReservationByRoomNo(i + 1);
			map.put(i, result);
		}

		// 말일은 빼고 계산해야됨. toDate 는 뺴고 진행해야됨 (비교할떄만 그렇게 하면 됨.)
		// 1. findAllReservationByRoomNo 배열 값이 empty 이거나 값이 차있다.
		// 2. 값이 비어있다면 무조건 예약 가능하고, 값이 있다면 가능한지 확인해야한다.
		// 3. 가져온 dto 의 값과 배열의 값을 비교하는 로직을 짜야한다.
		// 4. 값의 비교를 위해 dto 에 있는 getFullDate 를 써야한다.
		List<Integer> list = new ArrayList<>();
		System.out.println(map.toString());
		for (Integer key : map.keySet()) {
			System.out.println(key + 1);
			List<ReservationDto> value = map.get(key);
			if (value.isEmpty()) {
				System.out.println(key + "valueEmpty실행됨");
				list.add((int) key + 1);
			} else {
				System.out.println(key + "else실행됨");
				// value 는 List<ReservationDto> 이다.
				System.out.println(dto.getFullDate());
				Set<LocalDate> set1 = new HashSet<>(dto.getFullDate());
				boolean isDup = false;
				for (ReservationDto e : value) {
					System.out.println(e);
					Set<LocalDate> set2 = new HashSet<>(e.getFullDate());
					boolean anyOfDup = duplicationTest(set1, set2);
					if (anyOfDup) {
						isDup = true;
						break; // 외부 루프를 종료
					}
				}
				if(!isDup) {
					list.add(key + 1);
				}
			} // else end
		} // for end

		return list;
	};

	// 두 배열에 대한 중복확인. 중복된 값이 있으면 true 를 반환한다.
	private boolean duplicationTest(Set<LocalDate> set1, Set<LocalDate> set2) {
		set2.retainAll(set1);
		return !set2.isEmpty();
	}
}