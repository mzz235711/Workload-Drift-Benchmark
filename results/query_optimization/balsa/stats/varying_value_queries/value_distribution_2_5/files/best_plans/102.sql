/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<159 AND p.CommentCount>10 AND p.CommentCount<27 AND u.DownVotes>98 AND u.DownVotes<1049 AND v.CreationDate>'2012-08-16 07:54:14'::timestamp AND v.CreationDate<'2013-07-19 08:39:52'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-09-04 20:05:38'::timestamp AND b.Date<'2013-12-20 10:11:45'::timestamp;

