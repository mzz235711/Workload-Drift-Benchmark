/*+ MergeJoin(b v u)
 MergeJoin(v u)
 IndexScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND b.Date>='2010-09-08 20:32:32'::timestamp;

