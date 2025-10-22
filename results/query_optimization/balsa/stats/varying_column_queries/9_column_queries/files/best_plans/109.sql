/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-4 AND p.Score<=24 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-20 15:21:01'::timestamp AND p.CreationDate<='2014-08-27 13:49:06'::timestamp AND u.Views<=15 AND u.DownVotes<=15;

