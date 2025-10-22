/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<64 AND p.CommentCount>0 AND p.CommentCount<19 AND u.DownVotes>187 AND u.DownVotes<1103 AND v.CreationDate>'2009-12-24 10:25:11'::timestamp AND v.CreationDate<'2013-11-04 19:45:59'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2011-09-01 12:31:26'::timestamp AND b.Date<'2013-11-18 02:21:01'::timestamp;

