/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation<=414 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-19 19:11:38'::timestamp;

