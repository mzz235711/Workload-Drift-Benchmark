/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>111 AND p.Score<179 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>185 AND u.DownVotes<1563 AND v.CreationDate>'2011-12-10 21:13:15'::timestamp AND v.CreationDate<'2014-07-09 08:35:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-05-20 02:34:51'::timestamp AND b.Date<'2013-03-02 14:08:16'::timestamp;

