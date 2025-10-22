/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<135 AND p.CommentCount>8 AND p.CommentCount<27 AND u.DownVotes>261 AND u.DownVotes<1700 AND v.CreationDate>'2013-11-09 06:53:50'::timestamp AND v.CreationDate<'2014-03-18 08:05:23'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2012-11-04 20:18:31'::timestamp AND b.Date<'2014-08-22 05:09:26'::timestamp;

