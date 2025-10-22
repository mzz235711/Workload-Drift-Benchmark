/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<33 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>139 AND u.DownVotes<1733 AND v.CreationDate>'2011-03-12 00:13:48'::timestamp AND v.CreationDate<'2012-10-22 07:57:54'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2010-08-31 01:33:59'::timestamp AND b.Date<'2010-10-26 16:33:07'::timestamp;

