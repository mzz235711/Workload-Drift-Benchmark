/*+ HashJoin(b p u v)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b (p (u v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-1 AND p.AnswerCount=0 AND p.CreationDate>='2010-08-03 20:00:30'::timestamp AND p.CreationDate<='2014-09-10 08:22:43'::timestamp AND u.Reputation>=1 AND u.Reputation<=1190 AND u.Views<=158 AND u.DownVotes>=0 AND u.UpVotes>=0;

