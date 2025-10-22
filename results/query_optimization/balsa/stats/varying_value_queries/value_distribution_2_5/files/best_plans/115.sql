/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<40 AND p.CommentCount>0 AND p.CommentCount<32 AND u.DownVotes>188 AND u.DownVotes<1758 AND v.CreationDate>'2010-12-16 22:45:01'::timestamp AND v.CreationDate<'2011-02-06 21:21:52'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2011-07-03 05:59:13'::timestamp AND b.Date<'2012-06-26 08:53:47'::timestamp;

