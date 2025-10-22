/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<64 AND p.CommentCount>8 AND p.CommentCount<37 AND u.DownVotes>52 AND u.DownVotes<1324 AND v.CreationDate>'2009-03-19 07:29:03'::timestamp AND v.CreationDate<'2013-10-02 18:45:47'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2012-03-16 21:12:33'::timestamp AND b.Date<'2013-03-23 21:30:48'::timestamp;

