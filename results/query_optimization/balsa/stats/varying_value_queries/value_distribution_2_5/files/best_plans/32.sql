/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<0 AND p.CommentCount>2 AND p.CommentCount<14 AND u.DownVotes>7 AND u.DownVotes<654 AND v.CreationDate>'2011-12-30 21:04:40'::timestamp AND v.CreationDate<'2013-12-24 15:51:47'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2013-08-10 12:58:28'::timestamp AND b.Date<'2013-10-16 14:55:38'::timestamp;

