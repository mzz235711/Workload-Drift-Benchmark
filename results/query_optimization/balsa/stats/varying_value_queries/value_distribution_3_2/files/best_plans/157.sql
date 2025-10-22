/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<55 AND p.CommentCount>2 AND p.CommentCount<19 AND u.DownVotes>149 AND u.DownVotes<1013 AND v.CreationDate>'2009-10-05 05:06:04'::timestamp AND v.CreationDate<'2013-11-29 15:29:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-02-09 12:39:13'::timestamp AND b.Date<'2014-01-03 06:03:15'::timestamp;

