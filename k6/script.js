import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = {
  stages: [
    { duration: '5s', target: 10 },
    { duration: '10s', target: 5 },
    { duration: '5s', target: 0 },
  ],
  thresholds: {
    http_req_failed: ['rate<5'],
    http_req_duration: ['p(95)<400'],
  },
};

export default function () {
  const res = http.get('https://api.obol.tech/_health/');
  check(res, { 'status was 200': (r) => r.status == 200 });

  sleep(1);
}