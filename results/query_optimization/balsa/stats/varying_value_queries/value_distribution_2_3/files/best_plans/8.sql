/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<40 AND p.CommentCount>2 AND p.CommentCount<38 AND u.DownVotes>155 AND u.DownVotes<1721 AND v.CreationDate>'2013-04-04 20:42:35'::timestamp AND v.CreationDate<'2014-03-09 13:31:50'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-01-06 08:36:42'::timestamp AND b.Date<'2012-02-06 03:55:03'::timestamp;

