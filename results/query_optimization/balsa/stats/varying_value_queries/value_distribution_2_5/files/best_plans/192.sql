/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>54 AND p.Score<144 AND p.CommentCount>2 AND p.CommentCount<24 AND u.DownVotes>254 AND u.DownVotes<1565 AND v.CreationDate>'2013-11-22 21:27:53'::timestamp AND v.CreationDate<'2014-05-09 06:37:02'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2012-10-30 17:39:26'::timestamp AND b.Date<'2014-02-12 16:00:29'::timestamp;

