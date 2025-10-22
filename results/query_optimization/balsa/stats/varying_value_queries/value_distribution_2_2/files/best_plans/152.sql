/*+ MergeJoin(b u p v)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<37 AND p.CommentCount>13 AND p.CommentCount<29 AND u.DownVotes>605 AND u.DownVotes<1164 AND v.CreationDate>'2012-07-02 02:32:27'::timestamp AND v.CreationDate<'2014-08-09 11:18:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-08-05 20:55:30'::timestamp AND b.Date<'2013-03-12 16:35:51'::timestamp;

