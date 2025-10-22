/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<144 AND p.CommentCount>4 AND p.CommentCount<37 AND u.DownVotes>21 AND u.DownVotes<1547 AND v.CreationDate>'2011-06-29 16:06:03'::timestamp AND v.CreationDate<'2011-10-21 03:58:53'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2012-03-12 07:05:09'::timestamp AND b.Date<'2013-02-10 08:06:07'::timestamp;

