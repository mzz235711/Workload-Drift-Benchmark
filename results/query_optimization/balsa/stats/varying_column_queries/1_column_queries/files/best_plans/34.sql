/*+ MergeJoin(b v u)
 MergeJoin(v u)
 IndexScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-22 00:00:00'::timestamp;

