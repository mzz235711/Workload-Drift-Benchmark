/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<40 AND p.CommentCount>7 AND p.CommentCount<40 AND u.DownVotes>699 AND u.DownVotes<858 AND v.CreationDate>'2009-05-25 10:41:41'::timestamp AND v.CreationDate<'2011-12-11 19:45:21'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2011-03-13 05:37:59'::timestamp AND b.Date<'2014-02-18 06:08:14'::timestamp;

