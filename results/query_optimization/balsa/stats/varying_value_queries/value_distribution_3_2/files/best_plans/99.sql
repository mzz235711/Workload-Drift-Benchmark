/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>115 AND p.Score<147 AND p.CommentCount>0 AND p.CommentCount<43 AND u.DownVotes>167 AND u.DownVotes<1665 AND v.CreationDate>'2012-02-16 16:08:02'::timestamp AND v.CreationDate<'2014-05-30 02:13:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-12-04 11:29:50'::timestamp AND b.Date<'2014-04-25 05:05:13'::timestamp;

