/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2009-03-03 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=2430 AND u.Views<=34 AND u.DownVotes<=1 AND u.UpVotes>=0;

