/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<130 AND p.CommentCount>5 AND p.CommentCount<17 AND u.DownVotes>742 AND u.DownVotes<1742 AND v.CreationDate>'2009-02-09 08:27:27'::timestamp AND v.CreationDate<'2014-02-09 20:41:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-03-19 18:10:14'::timestamp AND b.Date<'2012-10-14 14:42:59'::timestamp;

