/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<151 AND p.CommentCount>14 AND p.CommentCount<42 AND u.DownVotes>692 AND u.DownVotes<1273 AND v.CreationDate>'2009-05-27 10:59:46'::timestamp AND v.CreationDate<'2013-09-06 12:40:57'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2013-02-13 03:49:34'::timestamp AND b.Date<'2014-01-17 07:37:38'::timestamp;

