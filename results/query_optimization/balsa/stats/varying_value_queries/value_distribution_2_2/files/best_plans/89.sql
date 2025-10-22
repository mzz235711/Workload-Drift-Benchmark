/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<109 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>681 AND u.DownVotes<1094 AND v.CreationDate>'2009-03-25 10:06:55'::timestamp AND v.CreationDate<'2014-04-16 19:54:20'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-02-11 07:01:02'::timestamp AND b.Date<'2013-08-28 01:11:07'::timestamp;

