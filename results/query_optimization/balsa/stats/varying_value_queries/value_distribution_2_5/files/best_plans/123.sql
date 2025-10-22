/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<69 AND p.CommentCount>5 AND p.CommentCount<19 AND u.DownVotes>419 AND u.DownVotes<977 AND v.CreationDate>'2010-08-26 06:23:30'::timestamp AND v.CreationDate<'2013-11-28 22:14:46'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-01-21 06:15:11'::timestamp AND b.Date<'2013-12-26 14:52:44'::timestamp;

