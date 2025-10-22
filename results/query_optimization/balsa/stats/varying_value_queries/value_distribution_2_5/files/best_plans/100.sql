/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<7 AND p.CommentCount>9 AND p.CommentCount<26 AND u.DownVotes>44 AND u.DownVotes<302 AND v.CreationDate>'2009-08-05 17:00:11'::timestamp AND v.CreationDate<'2012-01-05 05:31:24'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2011-07-05 06:31:28'::timestamp AND b.Date<'2013-12-13 04:26:48'::timestamp;

