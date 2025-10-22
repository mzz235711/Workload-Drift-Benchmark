/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<80 AND p.CommentCount>5 AND p.CommentCount<8 AND u.DownVotes>306 AND u.DownVotes<1420 AND v.CreationDate>'2010-04-27 21:30:12'::timestamp AND v.CreationDate<'2012-10-09 11:39:07'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2010-11-18 08:20:56'::timestamp AND b.Date<'2012-05-30 15:33:16'::timestamp;

