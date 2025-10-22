/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>64 AND p.Score<149 AND p.CommentCount>10 AND p.CommentCount<14 AND u.DownVotes>523 AND u.DownVotes<1875 AND v.CreationDate>'2010-07-13 12:11:35'::timestamp AND v.CreationDate<'2013-05-23 04:38:25'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-08-13 05:52:02'::timestamp AND b.Date<'2014-04-02 09:34:38'::timestamp;

