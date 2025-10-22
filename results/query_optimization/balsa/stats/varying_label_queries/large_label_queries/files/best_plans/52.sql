/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b (p (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.AnswerCount<=3 AND p.FavoriteCount<=31 AND u.Reputation=101 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-20 01:39:55'::timestamp AND u.CreationDate<='2014-08-24 18:13:02'::timestamp;

