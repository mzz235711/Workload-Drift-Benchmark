/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<147 AND p.CommentCount>0 AND p.CommentCount<18 AND u.DownVotes>111 AND u.DownVotes<877 AND v.CreationDate>'2012-02-09 06:36:23'::timestamp AND v.CreationDate<'2012-03-04 18:51:29'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2012-11-18 01:45:11'::timestamp AND b.Date<'2012-12-17 12:57:50'::timestamp;

