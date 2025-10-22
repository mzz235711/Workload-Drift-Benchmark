/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND b.Date>='2010-12-08 17:52:09'::timestamp AND u.Views<=45 AND u.UpVotes>=0 AND u.CreationDate>='2010-09-30 12:50:43'::timestamp;

