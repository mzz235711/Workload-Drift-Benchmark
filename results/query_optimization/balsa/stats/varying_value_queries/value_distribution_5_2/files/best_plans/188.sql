/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<11 AND p.CommentCount>3 AND p.CommentCount<18 AND u.DownVotes>272 AND u.DownVotes<513 AND v.CreationDate>'2010-12-03 22:53:09'::timestamp AND v.CreationDate<'2014-03-27 13:16:37'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2013-02-24 15:09:07'::timestamp AND b.Date<'2013-11-23 10:57:29'::timestamp;

