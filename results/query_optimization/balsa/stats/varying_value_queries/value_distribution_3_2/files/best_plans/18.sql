/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<46 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>40 AND u.DownVotes<774 AND v.CreationDate>'2010-10-20 07:05:39'::timestamp AND v.CreationDate<'2010-11-03 17:53:34'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-07-25 23:58:01'::timestamp AND b.Date<'2012-12-25 23:37:48'::timestamp;

