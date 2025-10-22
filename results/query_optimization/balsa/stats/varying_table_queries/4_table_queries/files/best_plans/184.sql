/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND p.ViewCount<=17403 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.FavoriteCount>=0 AND u.Views<=25 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-07 12:04:18'::timestamp;

