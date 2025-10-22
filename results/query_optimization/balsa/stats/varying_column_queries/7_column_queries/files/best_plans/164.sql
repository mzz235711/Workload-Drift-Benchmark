/*+ HashJoin(u p ph)
 NestLoop(p ph)
 SeqScan(u)
 IndexScan(p)
 IndexScan(ph)
 Leading((u (p ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-28 04:26:17'::timestamp AND p.CreationDate<='2014-08-23 02:52:41'::timestamp AND u.DownVotes>=0;

