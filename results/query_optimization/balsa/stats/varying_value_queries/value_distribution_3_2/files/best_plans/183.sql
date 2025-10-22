/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<142 AND p.CommentCount>8 AND p.CommentCount<27 AND u.DownVotes>329 AND u.DownVotes<1831 AND v.CreationDate>'2013-02-24 13:41:44'::timestamp AND v.CreationDate<'2013-03-18 13:31:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-08-05 00:33:45'::timestamp AND b.Date<'2013-04-12 10:56:27'::timestamp;

