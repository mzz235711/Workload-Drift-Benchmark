/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<90 AND p.CommentCount>26 AND p.CommentCount<39 AND u.DownVotes>200 AND u.DownVotes<426 AND v.CreationDate>'2011-07-11 02:09:30'::timestamp AND v.CreationDate<'2013-04-06 07:56:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-10-09 11:45:16'::timestamp AND b.Date<'2014-06-21 08:31:34'::timestamp;

