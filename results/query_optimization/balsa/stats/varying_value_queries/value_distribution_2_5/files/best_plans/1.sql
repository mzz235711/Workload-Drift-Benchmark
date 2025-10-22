/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<68 AND p.CommentCount>0 AND p.CommentCount<20 AND u.DownVotes>491 AND u.DownVotes<1513 AND v.CreationDate>'2012-01-18 22:26:49'::timestamp AND v.CreationDate<'2012-09-19 06:13:04'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2013-12-04 12:06:46'::timestamp AND b.Date<'2014-02-17 03:08:47'::timestamp;

