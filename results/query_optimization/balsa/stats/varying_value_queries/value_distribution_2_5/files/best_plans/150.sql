/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<40 AND p.CommentCount>14 AND p.CommentCount<38 AND u.DownVotes>594 AND u.DownVotes<1370 AND v.CreationDate>'2009-11-08 08:44:50'::timestamp AND v.CreationDate<'2013-01-22 15:29:37'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2011-02-13 11:18:41'::timestamp AND b.Date<'2011-03-21 08:49:46'::timestamp;

