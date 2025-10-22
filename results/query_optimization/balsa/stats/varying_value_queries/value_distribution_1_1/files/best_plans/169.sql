/*+ MergeJoin(v u p b)
 MergeJoin(u p b)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading((v ((u p) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<158 AND p.CommentCount>13 AND p.CommentCount<24 AND u.DownVotes>84 AND u.DownVotes<1628 AND v.CreationDate>'2009-07-25 16:42:53'::timestamp AND v.CreationDate<'2014-03-24 21:40:06'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-06-13 01:38:46'::timestamp AND b.Date<'2011-08-11 06:10:32'::timestamp;

