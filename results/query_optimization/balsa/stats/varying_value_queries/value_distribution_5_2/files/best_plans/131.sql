/*+ NestLoop(u p b v)
 MergeJoin(u p b)
 MergeJoin(u p)
 SeqScan(u)
 SeqScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<157 AND p.CommentCount>2 AND p.CommentCount<24 AND u.DownVotes>336 AND u.DownVotes<1049 AND v.CreationDate>'2010-07-31 21:58:46'::timestamp AND v.CreationDate<'2014-08-07 01:05:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-06-11 17:59:45'::timestamp AND b.Date<'2011-09-13 03:39:28'::timestamp;

