/*+ HashJoin(c ph b p u)
 HashJoin(ph b p u)
 HashJoin(b p u)
 NestLoop(p u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(b)
 IndexScan(p)
 IndexScan(u)
 Leading((c (ph (b (p u))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.FavoriteCount>=0 AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-10-29 08:56:14'::timestamp AND ph.CreationDate<='2014-08-23 18:16:01'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

