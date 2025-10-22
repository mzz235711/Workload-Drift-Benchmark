/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<137 AND p.CommentCount>6 AND p.CommentCount<38 AND u.DownVotes>744 AND u.DownVotes<1342 AND v.CreationDate>'2011-06-23 06:12:51'::timestamp AND v.CreationDate<'2013-10-30 12:17:33'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2011-06-08 17:48:52'::timestamp AND b.Date<'2012-12-21 12:14:01'::timestamp;

