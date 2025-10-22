/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<190 AND p.CommentCount>16 AND p.CommentCount<19 AND u.DownVotes>266 AND u.DownVotes<1803 AND v.CreationDate>'2011-12-27 01:46:56'::timestamp AND v.CreationDate<'2013-10-29 16:04:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2013-02-25 23:51:14'::timestamp AND b.Date<'2013-12-04 13:17:16'::timestamp;

