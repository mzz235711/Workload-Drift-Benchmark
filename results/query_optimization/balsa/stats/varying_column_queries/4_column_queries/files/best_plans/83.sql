/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Views=2 AND u.DownVotes=0 AND u.UpVotes<=147;

