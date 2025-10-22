/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<117 AND p.CommentCount>1 AND p.CommentCount<18 AND u.DownVotes>30 AND u.DownVotes<1010 AND v.CreationDate>'2013-07-09 03:54:05'::timestamp AND v.CreationDate<'2013-11-25 11:36:40'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2010-09-30 01:10:50'::timestamp AND b.Date<'2012-12-28 23:18:43'::timestamp;

