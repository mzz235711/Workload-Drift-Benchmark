/*+ NestLoop(b u p v)
 NestLoop(b u p)
 NestLoop(b u)
 SeqScan(b)
 IndexScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((((b u) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<89 AND p.CommentCount>13 AND p.CommentCount<34 AND u.DownVotes>569 AND u.DownVotes<1802 AND v.CreationDate>'2009-12-22 05:17:54'::timestamp AND v.CreationDate<'2012-05-21 21:38:47'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2011-10-23 21:19:32'::timestamp AND b.Date<'2011-11-05 21:32:48'::timestamp;

