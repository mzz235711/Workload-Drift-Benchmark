/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<180 AND p.CommentCount>17 AND p.CommentCount<31 AND u.DownVotes>235 AND u.DownVotes<1699 AND v.CreationDate>'2012-05-16 16:30:24'::timestamp AND v.CreationDate<'2014-02-19 12:16:32'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-06-08 02:42:16'::timestamp AND b.Date<'2013-08-28 15:13:16'::timestamp;

