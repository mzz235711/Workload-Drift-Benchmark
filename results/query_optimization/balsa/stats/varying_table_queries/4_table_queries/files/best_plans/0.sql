/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-6 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CreationDate>='2010-07-25 20:08:35'::timestamp AND p.CreationDate<='2014-08-22 17:03:08'::timestamp AND u.Reputation<=748 AND u.Views>=0 AND u.Views<=11 AND u.UpVotes>=0 AND u.UpVotes<=58;

