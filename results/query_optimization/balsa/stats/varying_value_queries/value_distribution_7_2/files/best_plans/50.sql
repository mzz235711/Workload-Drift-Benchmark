/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<30 AND p.CommentCount>6 AND p.CommentCount<36 AND u.DownVotes>628 AND u.DownVotes<825 AND v.CreationDate>'2010-06-17 16:59:41'::timestamp AND v.CreationDate<'2013-04-06 05:19:39'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2013-02-18 07:55:34'::timestamp AND b.Date<'2014-01-05 13:32:46'::timestamp;

