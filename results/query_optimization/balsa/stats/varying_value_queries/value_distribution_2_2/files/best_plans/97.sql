/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<149 AND p.CommentCount>3 AND p.CommentCount<12 AND u.DownVotes>681 AND u.DownVotes<1106 AND v.CreationDate>'2010-07-21 01:13:21'::timestamp AND v.CreationDate<'2013-05-06 04:44:49'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-02-23 20:28:52'::timestamp AND b.Date<'2012-05-13 05:00:49'::timestamp;

