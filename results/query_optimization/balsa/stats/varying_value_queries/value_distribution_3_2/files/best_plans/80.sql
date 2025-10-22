/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<114 AND p.CommentCount>0 AND p.CommentCount<30 AND u.DownVotes>65 AND u.DownVotes<1002 AND v.CreationDate>'2011-01-31 12:02:18'::timestamp AND v.CreationDate<'2014-02-27 05:16:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-11-02 06:16:08'::timestamp AND b.Date<'2012-04-21 01:59:16'::timestamp;

