/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<142 AND p.CommentCount>2 AND p.CommentCount<7 AND u.DownVotes>678 AND u.DownVotes<1816 AND v.CreationDate>'2011-05-11 11:58:10'::timestamp AND v.CreationDate<'2013-05-17 02:55:56'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2014-04-02 03:24:36'::timestamp AND b.Date<'2014-06-14 12:50:31'::timestamp;

