/*+ HashJoin(c p u v)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((c (p (u v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score<=40 AND p.CommentCount<=10 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-07-20 05:35:48'::timestamp AND p.CreationDate<='2014-08-28 07:04:48'::timestamp AND v.BountyAmount<=50 AND u.DownVotes<=4 AND u.UpVotes>=0 AND u.UpVotes<=5;

