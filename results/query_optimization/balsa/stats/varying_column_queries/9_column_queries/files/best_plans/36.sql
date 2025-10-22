/*+ HashJoin(ph v pl p u b)
 HashJoin(v pl p u b)
 MergeJoin(v pl p u)
 HashJoin(pl p u)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((ph ((v ((pl p) u)) b))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.AnswerCount<=5 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-28 19:40:27'::timestamp AND ph.CreationDate<='2014-05-13 10:16:08'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND b.Date>='2010-07-19 20:39:06'::timestamp AND b.Date<='2014-09-11 14:11:25'::timestamp AND u.Views<=73;

