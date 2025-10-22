/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<126 AND p.CommentCount>15 AND p.CommentCount<42 AND u.DownVotes>396 AND u.DownVotes<1445 AND v.CreationDate>'2009-08-17 17:39:46'::timestamp AND v.CreationDate<'2011-10-30 08:56:12'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2010-12-06 11:31:01'::timestamp AND b.Date<'2011-05-31 13:26:44'::timestamp;

