/*+ MergeJoin(b u p v)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<174 AND p.CommentCount>1 AND p.CommentCount<34 AND u.DownVotes>592 AND u.DownVotes<1575 AND v.CreationDate>'2011-04-22 12:49:09'::timestamp AND v.CreationDate<'2013-03-26 05:21:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-03-25 06:35:15'::timestamp AND b.Date<'2014-07-04 13:19:19'::timestamp;

