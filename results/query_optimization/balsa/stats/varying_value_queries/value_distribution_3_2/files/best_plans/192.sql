/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<110 AND p.CommentCount>16 AND p.CommentCount<25 AND u.DownVotes>147 AND u.DownVotes<1642 AND v.CreationDate>'2011-06-22 16:50:25'::timestamp AND v.CreationDate<'2012-09-25 09:47:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-05-10 18:35:53'::timestamp AND b.Date<'2014-01-26 04:11:21'::timestamp;

